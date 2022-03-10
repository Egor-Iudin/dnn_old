#!/bin/sh
################
net-spec bnn_01.net 18 40 1 / - 0.5:0.5 0.5:0.5 - x0.5:0.5 - 100;
rand-seed bnn_01.net 7778;
model-spec bnn_01.net binary;
 data-spec bnn_01.net 18 1 2 /   bnn_sm7_trainFile_161115_140342_gqs.root:/Vars,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20   bnn_sm7_trainFile_161115_140342_gqs.root:/Vars,1 weights=bnn_sm7_trainFile_161115_140342_gqs.root:/Vars,2 rescale_weights=0   bnn_sm7_examFile_161115_140915_OYO.root:/Vars,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20   bnn_sm7_examFile_161115_140915_OYO.root:/Vars,1

###############
net-gen bnn_01.net fix 0.5;
mc-spec bnn_01.net repeat 20 sample-noise heatbath hybrid 20:20 0.2; net-mc bnn_01.net 1;
echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!##################################";
mc-spec bnn_01.net repeat 20 sample-sigmas heatbath 0.95 hybrid 20:20 0.3 negate;net-mc bnn_01.net 2;

#################
#################

