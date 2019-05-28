#!/usr/bin/env bash
chmod +x /userhome/config.sh
bash /userhome/config.sh
cd /userhome/code/DDPNAS
python3 run_exp.py --path Exp/mobile_gpu --dataset 'imagenet' --model_type "gpu" --mobile_gene "[(7, 6), (7, 3), (5, 6), (7, 1), (3, 6), (7, 6), (5, 1), (5, 3), (5, 6), (7, 6), (7, 6), (5, 3), (7, 6), (5, 6)]"
