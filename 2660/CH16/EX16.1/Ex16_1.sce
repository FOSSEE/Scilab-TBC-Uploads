clc
n = 34 // number of teeths
m = 5 // module in mm
w = m*n*sin (%pi/(n*2)) //tooth thickness in mm
h = m*(1+(n*(1 - cos(%pi/(n*2)))/2)) // chordal addendum in mm
printf("\n Tooth thickness = %0.3f mm\n Chordal addendum = %0.3f mm" ,w ,h)
// 'Answers vary due to round off error'
