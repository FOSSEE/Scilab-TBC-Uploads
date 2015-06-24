
e1=.985//efficiency at full load, .8 pf lagging
//.985=100D+3*.8/(100D+3*.8+Wi+Wcu)-->.985*Wi+.985*Wcu=1200
e2=.99//efficiency at half load, unity pf
//.99=((100D+3)/2)/((100D+3)/2+Wi+Wcu/4)-->.99*Wi+.2475*Wcu=500
//solving for Wi and Wcu
a=[.985 .985;.99 .2475]
b=[1200;500]
w=inv(a)*b
Wi=w(1,1)
Wcu=w(2,1)
mprintf("Iron losses=%f W\nFull load copper losses=%f W",Wi,Wcu)
