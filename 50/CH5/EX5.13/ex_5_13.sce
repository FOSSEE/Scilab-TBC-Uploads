// example 5.13
// caption: simpson 3-8 rule


// let integration of f(x)=1/(1+x) in the range [0,1] by simpson 3-8 rule is equal to I

x=0:1/3:1;
deff('[y]=f(x)','y=1/(1+x)')

[I] = simpson38(x,f)

  