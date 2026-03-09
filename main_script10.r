# main_template.R

cat("Working directory:", getwd(), "\n")

output_dir <- file.path(getwd(), "outputs/script1")
dir.create(output_dir, recursive = TRUE, showWarnings = FALSE)
cat("Created directory:", output_dir, "\n")

source("DTvsfDT.R")


obs_gen_para <- read.csv("obs_info_all.csv")

dt <- 10

the_result <- DT_vs_fDT_Alg(obs_gen_para, dt)


file_name <- file.path(output_dir, paste0("results_part12.rds"))
saveRDS(the_result, file = file_name)