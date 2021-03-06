#' get_tos_database.R
#' extract .csv for plant, vertebrate, or invertebrate ToS dbs and rename columns<\n>
#' parameter: tos_db, ToS database to download, either "plant", "vertebrate", or "invertebrate"
#' expected output: ToS database with reformatted headers
#' reference: http://treeofsex.org/
#' examples: 
#' plant_tos_db <- get_tos_database("plant")

get_tos_database <- function(tos_db) {
	
	if (tos_db == "plant") {
		cat("loading plant db\n")
		plant_tos <- read.csv(url("http://bbrowse.biol.berkeley.edu/treeV2/styled/downloads-3/files/plantsTreeOfSex.csv"), header=TRUE, na.strings="", check.names=FALSE)
		
		# clean up and rename the headers
		colnames(plant_tos) <- c(
			"kingdom",
			"higher_taxonomic_group",
			"order",
			"family",
			"genus",
			"species",
			"species_author",
			"infraspecific",
			"common_name",
			"hybrid",
			"hybrid_source",
			"plant_list_status",
			"plant_list_name",
			"sexual_system",
			"sexual_system_source",
			"selfing",
			"selfing_source",
			"growth_form",
			"growth_form_source",
			"woodiness",
			"woodiness_count",
			"woodiness_source",
			"life_form",
			"life_form_source",
			"gametophytic_n",
			"gametophytic_n_min",
			"gametophytic_n_mean",
			"gametophytic_n_source",
			"sporophytic_n",
			"sporophytic_n_min",
			"sporophytic_n_mean",
			"sporophytic_n_source",
			"karyotype",
			"karyotype_source",
			"molecular_basis",
			"molecular_basis_source",
			"genotype",
			"genotype_source",
			"notes",
			"entry_email"
		)
		return(plant_tos)
	}
	
	if (tos_db == "vertebrate") {
		cat("loading vertebrate db\n")
		vertebrate_tos <- read.csv(url("http://bbrowse.biol.berkeley.edu/treeV2/styled/downloads/files/vertebrateTreeOfSex.csv"), check.names=FALSE)
		
		# clean up and rename the headers
		colnames(vertebrate_tos) <- c(
			"higher_taxonomic_group",
			"order",
			"family",
			"genus",
			"species",
			"chromosome_female",
			"chromosome_male",
			"predicted_ploidy",
			"sexual_system",
			"karotype",
			"genotype",
			"haplodiploidy",
			"environmental",
			"polyfactorial",
			"molecular_basis",
			"entry_initials",
			"entry_email",
			"notes",
			"chromosome_female_source",
			"chromosome_male_source",
			"predicted_ploidy_source",
			"sexual_system_source",
			"karyotype_source",
			"genotype_source",
			"haplodiploidy_source",
			"environmental_source",
			"polyfactorial_source",
			"molecular_basis_source"
		)	
		return(vertebrate_tos)
	}
	
	if (tos_db == "invertebrate") {
		cat("loading invertebrate db\n")
		invertebrate_tos <- read.csv(url("http://bbrowse.biol.berkeley.edu/treeV2/styled/downloads-2/files/invert.data.csv"), check.names=FALSE)
		
		colnames(invertebrate_tos) <- c(
			"kingdom",
			"higher_taxonomic_group",
			"order",
			"family",
			"genus",
			"species",
			"sexual_system",
			"sexual_system_source",
			"karyotype",
			"karotype_source",
			"karyotype_notes",
			"genotype",
			"genotype_source",
			"haplodiploidy",
			"haplodiploidy_notes",
			"haplodiploidy_source",
			"predicted_ploidy",
			"predicted_ploidy_source",
			"chromosome_2n_female",
			"chromosome_2n_female_source",
			"chromosome_2n_female_notes",
			"chromosome_2n_male",
			"chromosome_2n_male_source",
			"chromosome_2n_male_notes",
			"notes",
			"entry_name",
			"entry_email"
		)
		return(invertebrate_tos)
	}
	
	else(cat("invalid database. must pick plant, vertebrate, or invertebrate\n"))
}
