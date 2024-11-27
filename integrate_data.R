library(SingleCellTools)
options(Seurat.object.assay.version = 'v5')

ids <- c('../data/CF_LI', '../data/CF_SI', '../data/CT_LI', '../data/CT_SI')

seurat_object <- CreateAndIntegrateRNA(ids, treatment = basename(ids), 
                                       cluster_resolution = 0.1)
DimPlot(seurat_object, label = T, raster = F)
