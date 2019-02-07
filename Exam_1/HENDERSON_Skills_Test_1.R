library(readr)
DNA_Conc_by_Extraction_Date <- read_delim("DNA_Conc_by_Extraction_Date.csv", 
                                          "\t", escape_double = FALSE, col_types = cols(DNA_Concentration_Ben = col_number(), 
                                                                                        DNA_Concentration_Katy = col_number(), 
                                                                                        Date_Collected = col_date(format = "%Y-%m-%d"), 
                                                                                        Lab = col_factor(levels = c("Upstairs", 
                                                                                                                    "Downstairs"))), trim_ws = TRUE)
View(DNA_Conc_by_Extraction_Date)
#Task 1
DNA_Concentration_Katy <- DNA_Conc_by_Extraction_Date["DNA_Concentration_Katy"]
num_DNA_Concentration_Katy <- as.numeric(unlist(DNA_Concentration_Katy))
hist(num_DNA_Concentration_Katy, main = "Historgram of Katy's DNA Extractions", xlab = "DNA Concentration per sample")



#It took me stupid long to figure this out because I thought I needed to relist the vector, which as it turns out made it impossible to be numeric.
#I spent forever trying to figure out why it wouldn't be numeric.

DNA_Concentration_Ben <- DNA_Conc_by_Extraction_Date["DNA_Concentration_Ben"]
num_DNA_Concentration_Ben <- as.numeric(unlist(DNA_Concentration_Ben))
hist(num_DNA_Concentration_Ben, main = "Historgram of Ben's DNA Extractions", xlab = "DNA Concentration per sample")

#Task 2
Year_Collected <- cbind(DNA_Conc_by_Extraction_Date["Year_Collected"])
C_DNA_Conc_Katy <- cbind(DNA_Conc_by_Extraction_Date["DNA_Concentration_Katy"])
year(C_DNA_Conc_Katy) <- Year_Collected
Katy_DNA_Conc_Year 
boxplot(DNA_Conc_by_Extraction_Date)
