#!/usr/bin/env bash
chmod +x /userhome/config.sh
bash /userhome/config.sh
cd /userhome/code/DDPNAS
python3 run_exp.py --path Exp/darts_imagenet --dataset 'imagenet' --darts_gene "Genotype(normal=[[('sep_conv_5x5', 1), ('max_pool_3x3', 0)], [('dil_conv_3x3', 0), ('sep_conv_3x3', 1)], [('sep_conv_3x3', 0), ('max_pool_3x3', 3)], [('dil_conv_3x3', 2), ('avg_pool_3x3', 0)]], normal_concat=range(2, 6), reduce=[[('sep_conv_5x5', 1), ('avg_pool_3x3', 0)], [('avg_pool_3x3', 1), ('skip_connect', 0)], [('skip_connect', 2), ('sep_conv_3x3', 1)], [('dil_conv_5x5', 0), ('dil_conv_5x5', 4)]], reduce_concat=range(2, 6))"
