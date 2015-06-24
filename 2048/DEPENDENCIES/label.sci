// Updated (9-12-06)
// Input arguments:title, xlabel, ylabel and their font sizes

function label(tname,tfont,labelx,labely,xyfont)
a = get("current_axes")
xtitle(tname,labelx,labely)
xgrid
t = a.title;
t.font_size = tfont; //Title font size
t.font_style = 2; //Title font style 
t.text = tname;

u = a.x_label;
u.font_size = xyfont; //Label font size
u.font_style = 2; //Label font style

v = a.y_label;
v.font_size = xyfont; //Label font size
v.font_style = 2; //Label font style

// a.label_font_size = 3;

endfunction;
