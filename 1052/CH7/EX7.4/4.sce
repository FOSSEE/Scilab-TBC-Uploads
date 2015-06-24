clc;
//Example 7.4
//page no 67, fig 7.5
printf("Example 7.4 page no,fig 7.5\n\n")
//Given pollutant in ppm in liquid stream ,some pollutant in discharge volume 
//calculate what fraction of liquid bypass
//liquid stream having 600 ppm pollutant
//pollutant in the discharge stream is 50 ppm
//if B =factio of liquid bypassed,then 1-B= fraction of liquid treated
//performing a pollutant mass balance around point2 in fig. 7.5
B=poly([0],'x');
N=roots((1-B)*0+600*B-50*1)
printf("\n\n calculation:\n  calculation  of liquid  bypassed B=%.4f ",N(1));
