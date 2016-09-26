This is clone of the official Gviz package. The main change I have made is 
`AnnotationTrack` and `DataTrack` support a self-defined function `panelFun` which
can be used to add customized graphics. An example will look like:

```{r}
DataTrack(..., panelFun = function() {
    grid.text("labels", x = 0, y = 1, just = c("left", "top"))
})
```
