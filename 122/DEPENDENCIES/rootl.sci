// Plot the root locus in a box
// rootl(G,box,text)
// G  : linear system
// box: so ordinates of axis bounds
// text: title of plot window

function rootl(G,box,text)
  evans(G);
  xgrid();
  a = gca(); 
  if box ~= 0 then
    a.box = "on";
    a.data_bounds = box;
  end 
  a.children(1).visible = 'off'; //remove the legend block
  xtitle(text);
endfunction
