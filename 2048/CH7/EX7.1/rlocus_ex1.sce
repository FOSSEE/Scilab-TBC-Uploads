// Procedure to draw root locus for the problem discussed in Example 7.1 on page 247.
// 7.1

exec('tf.sci',-1);

H = tf(1,[1 -1 0],-1);
evans(H)


