# main_template.R

cat("Working directory:", getwd(), "\n")

output_dir <- file.path(getwd(), "outputs/script20")
dir.create(output_dir, recursive = TRUE, showWarnings = FALSE)
cat("Created directory:", output_dir, "\n")

source("DTvsfDT.R")


obs_gen_para <- read.csv("pattern_new/obstacle_20.csv")


the_result <- DT_Alg_save(obs_gen_para)


file_name <- file.path(output_dir, paste0("DT20.rds"))
saveRDS(the_result, file = file_name)
