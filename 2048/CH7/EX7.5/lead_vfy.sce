// Bode plot of a lead controller, as shown in Fig. 7.13 on page 257.
// 7.5

exec('tf.sci',-1);

w = linspace(0.001,0.5,1000);
G = tf([1 -0.8],[1 -0.24],-1);
bode(G,w)

