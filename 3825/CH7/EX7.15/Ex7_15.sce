clc
h1=2870.5
s1=7.5072
h2=504.7
s2=1.5301
deltassteam=s2-s1
deltaSsys=deltassteam
mprintf("deltassteam=%fkJ/kg\n",deltassteam)
q=h2-h1
Q=-q
mprintf("q=%fkJ\n",q)
Tsur=300
deltaSsur=Q/Tsur
mprintf("deltaSsur=%fkJ/K\n",deltaSsur)
deltaSuni=deltaSsys+deltaSsur
mprintf("deltaSsur=%fkJ/K",deltaSuni)

