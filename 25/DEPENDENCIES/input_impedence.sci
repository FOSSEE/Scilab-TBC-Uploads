// function for input impedence.
function[Zin]=input_impedence(tao,b,l,Zo)
  Zin=Zo*((1+(tao*exp(-2*%i*b*l)))/(1-(tao*exp(-2*%i*b*l))))
endfunction