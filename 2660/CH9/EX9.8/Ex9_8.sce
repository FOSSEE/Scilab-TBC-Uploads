clc
tb = 0.005 // tolerence on bearing in mm
tj = 0.004 // tolerence on journal in mm
a = 0.002 // allowance in mm
//hole-basis system
b = 100 // basic size in mm
Bl = b // lower limit of bearing in mm
Bh = Bl+tb // higher limit of bearing in mm
Jh = Bl-a // higher limit of journal in mm
Jl1 = Jh - tj // lower limit of journal in 
// shaft-basis system
Ju = b // upper limit of journal in mm
Jl2 = Ju-tj // lower limit of journal in mm
Bl = Ju+a // lower limit of bearing in mm
Bu = Bl+tb // upper limit of bearing in mm
printf("\n Hole basis system \n Lower limit of journal = %d mm\n Higher limit of bearing = %0.3f mm\n Higher limit of journal = %0.3f mm \n Lower limit of journal = %0.3f mm", Bl,Bh,Jh,Jl1)
printf("\n shaft basis system \n upper limit of journal = %0.3f mm\n lower limit of journal = %0.3f mm\n lower limit of bearing = %0.3f mm\n upper limit of bearing = %0.3f mm" , Ju,Jl2,Bl,Bu)
