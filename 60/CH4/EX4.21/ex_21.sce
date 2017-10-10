//Example(4.15) (pgno 202)

B=[1 2 0;2 1 0;0 0 -1]
I=[1 0 0;0 1 0;0 0 1]
         //here we are taking lamda=a
         //det(B-a)*I=0 is characteristic equation to get lamda
deff('[y]=pa','pa=det(B-a)*I')
pa=0