.boxes_origin = .boxes
.arrowBar_origin = .arrowBar
.fontGp_origin = .fontGp

FUN_ENV = new.env()

change_fun = function(fun_name, var) {
	assign(fun_name, var, envir = FUN_ENV)
}

change_fun(".boxes", .boxes_origin)
change_fun(".arrowBar", .arrowBar_origin)
change_fun(".fontGp", .fontGp_origin)

get_fun = function(fun_name) {
	get(fun_name, envir = FUN_ENV)
}

get_origin_fun = function(fun_name) {
	get(paste0(fun_name, "_origin"), envir = topenv())
}

reset_fun = function(fun_name) {
	change_fun(fun_name, get(paste0(fun_name, "_origin"), envir = topenv()))
}

.boxes = function(...) {
	get_fun(".boxes")(...)
}

.arrowBar = function(...) {
	get_fun(".arrowBar")(...)
}

.fontGp = function(...) {
	get_fun(".fontGp")(...)
}
