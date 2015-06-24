// Procedure to draw Bode plots in Fig. 7.11 on page 255.
// 7.3

exec('tf.sci',-1);

pol1 = [1 -0.9]; pol2 = [1 -0.8];
G1 = tf(pol1,[1 0],-1);
G2 = tf(pol2,[1 0],-1);
w = linspace(0.001,0.5,1000);
xset('window',1);
bode([G1;G2],w);
G = tf(pol1,pol2,-1);
xset('window',2);
bode(G,w);



