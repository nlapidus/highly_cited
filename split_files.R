
n_grp <- 4 ; size_grp <- ceiling(nrow(all_pubs) / n_grp)
tmp <- all_pubs %>% 
  split(rep(1:n_grp, each = size_grp)[1:nrow(.)])
for(.i in seq(length(tmp))) {
  write_csv(tmp[[.i]], file = here("data", str_c("all_pubs_", .i, ".csv")))
}

n_grp <- 28 ; size_grp <- ceiling(nrow(all_citations) / n_grp)
tmp <- all_citations %>% 
  split(rep(1:n_grp, each = size_grp)[1:nrow(.)])
for(.i in seq(length(tmp))) {
  write_csv(tmp[[.i]], file = here("data", str_c("all_citations_", .i, ".csv")))
}

n_grp <- 23 ; size_grp <- ceiling(nrow(d) / n_grp)
tmp <- d %>% 
  split(rep(1:n_grp, each = size_grp)[1:nrow(.)])
for(.i in seq(length(tmp))) {
  write_csv(tmp[[.i]], file = here("data", str_c("merged_data_", .i, ".csv")))
}


