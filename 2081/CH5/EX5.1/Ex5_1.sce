op=15
l=2
n=2
l1=n*l//connector loss
l2=3//coaxial cable loss
tl=l1+l2//total loss
ip=op-tl//input=output-total loss
disp(ip,'signal level at the i/p of the antenna in dBm')
