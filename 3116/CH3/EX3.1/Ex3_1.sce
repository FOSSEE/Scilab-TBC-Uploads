clc
// Given
a = 0.48// let side of a unit cell
b = 0.46 //  let side of a unit cell
c = 0.40 // let side of a unit cell
p_x = 1/4
p_y = 1
p_z = 1/2
printf("Example 3.1")
qa = a*p_x // distance of point along x axis from origin in nm
rb = b*p_y // distance of point along y axis from origin in nm
sc = c*p_z // distance of point along z axis from origin
printf("\n Point P (%.2f,%.2f,%.2f) corresponds to",p_x,p_y,p_z)
printf(" %.2fnm,%.2fnm,%.2fnm ",qa,rb,sc)
