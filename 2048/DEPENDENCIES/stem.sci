// Stem plot
// Updated (1-12-06)
function stem(x,y,xy)
if argn(2) == 2
xy = 5; 
end;
set("figure_style","new")
plot2d3(x,y,style=2);
//plot2d4(x,y,style=-9); //  default mark foreground colour: black
// Can be used instead of xpoly
// But default values cannot be changed
xpoly(x,y,"marks");
p=get("hdl");
p.mark_size_unit = 'point';
p.mark_size = xy;
p.mark_style = 9;
p.mark_foreground = 2;
p.mark_background = 2;
endfunction;

