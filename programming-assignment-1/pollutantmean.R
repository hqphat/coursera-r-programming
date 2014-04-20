## Calculates the mean of a pollutant (sulfate or nitrate) across a specified list of monitors.
## The function 'pollutantmean' takes three arguments: 'directory', 'pollutant', and 'id'.
## Given a vector monitor ID numbers, 'pollutantmean' reads that monitors' particulate matter data
## from the directory specified in the 'directory' argument and returns the mean of the pollutant
## across all of the monitors, ignoring any missing values coded as NA.
pollutantmean <- function(directory, pollutant, id = 1:332) {
    
        ## Get a list of filenames
		filenames <- list.files(path=directory, pattern="*.csv")
        
        ## Initialize a vector to hold values
        vals <- vector()

        ## Loop over the passed id's
		for(i in id) {

            ## Pad the i to create a filename
            filename <- sprintf("%03d.csv", i)
            filepath <- paste(directory, filename, sep="/")

            ## Load the data
			data <- read.csv(filepath)

            ## Select our column
            d <- data[,pollutant]

            ## Ignore NAs
			d <- d[!is.na(d)]

            ## append to our vector
            vals <- c(vals, d)
		}

        ## Return the value rounded to 3 dec places
		round(mean(vals), 3)
}