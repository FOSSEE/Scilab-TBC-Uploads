// Determination of coefficient of friction
clc
h = 20 // height in mm
od_i = 40 // initial outer diameter in mm
id_i = 20 // initial inner diameter in mm
od_f = 50 // final outer diameter in mm
del_l = 40// percentage reduction in length
printf("\n Example 4.1")
h_f = h*(1-del_l/100)
v = %pi/4 * (od_i^2-id_i^2)*h
id_f = sqrt(od_f^2-(4/%pi)*v/h_f)
del_id = (id_f - id_i)/id_i *100

printf("\n For a change of %d %% in length and %.1f %% in ID, \n By interpolation from figure, \n\n mu is 0.03 and m is 0.11",del_l,del_id)

