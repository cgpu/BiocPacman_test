BiocPacman <- function(packages_to_load){
  
  # Install dependencies
  if (!requireNamespace("pacman"     , quietly = TRUE))install.packages("pacman")
  if (!requireNamespace("BiocManager", quietly = TRUE))install.packages("BiocManager")
  
  # Loop over packages_to_load:
  for (package_index in 1:length(packages_to_load)) {
    
    # If package not available:
    if (!requireNamespace(packages_to_load[package_index], quietly = TRUE)){ 
      
      # Install package with BioCManager
      BiocManager::install(packages_to_load[package_index], update = FALSE, ask = FALSE)
      
      # Load package with pacman; 
      # for non-Bioc packages this insures download with install.packages()
      pacman::p_load(packages_to_load[package_index])
      
    }
  }
}
