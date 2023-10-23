res.pca <- princomp(data, scale = TRUE)
plot1 <- fviz_eig(res.pca)
plot1
png("eigenvalues_plot.png", width = 800, height = 600, units = "px", res = 100)
plot1
dev.off()
biplot1<-fviz_pca_ind(res.pca,
                      col.ind = "cos2", # Color by the quality of representation
                      gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07"),
                      repel = TRUE     # Avoid text overlapping
)
biplot1
png("biplot.png", width = 800, height = 600, units = "px", res = 100)
biplot1
dev.off()
