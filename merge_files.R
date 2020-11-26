all_pubs <- here("data", str_subset(dir(here("data")), "all_pubs_")) %>% 
  map_dfr(read_csv)

all_citations <- here("data", str_subset(dir(here("data")), "all_citations_")) %>% 
  map_dfr(read_csv)

d <- here("data", str_subset(dir(here("data")), "merged_data_")) %>% 
  map_dfr(read_csv)
