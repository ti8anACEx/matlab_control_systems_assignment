% 1. Transfer functions for block diagrams

G1 = tf([10], [1 0])
G2 = tf([1 1], [1 5 0])
G3 = tf([10], [1 3 9])

series_G1_G2            = series(G1, G2)
parallel_G1_G2          = parallel(G1, G2)
series_all              = series(series_G1_G2, G3)
parallel_all            = parallel(parallel_G1_G2, G3)


% 2. Closed Loop Transfer Functions (CLTFs)

G4 = tf([100], [1 4 0])
H4 = tf([1], [1 1])

CLTF1 = feedback(G4, H4)

G5 = tf([5 15], [1 3 9])
H5 = tf([2], [1 0])

CLTF2 = feedback(G5, H5)