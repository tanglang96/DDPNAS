# Dynamic Distribution Pruning for Efficient Network Architecture Search

Network architectures obtained by Neural Architecture Search (NAS) have shown state-of-the-art performance in various computer vision tasks. Despite the exciting progress, the computational complexity of the forward-backward propagation and the search process makes it difﬁcult to apply NAS in practice. In particular, most previous methods require thousands of GPU days for the searching process to converge. In this paper, we propose a dynamic distribution pruning method towards extremely efﬁcient NAS, which considers architectures as sampled from a dynamic joint categorical distribution. In this way, the search space is dynamically pruned in a few epochs according to this distribution, and the optimal neural architecture is obtained when there is only one structure remained in this distribution. We conduct experiments on two widely-used datasets in NAS. On CIFAR-10, the optimal structure obtained by our method achieves the state-of-the-art 1.9% test error, while the search process is more than 1,000 times faster (only 1.5 GPU hours on a Tesla V100) than the state-of-the-art NAS algorithms. On ImageNet, our model achieves 75.2% top-1 accuracy under the MobileNet settings, with a time cost of only 2 GPU days that is 2 times comparing to the fastest one.

![](https://github.com/tanglang96/DDPNAS/blob/master/figs/1.PNG)

Here we provide our test codes and pretrained models, our code is based on [DARTS](<https://github.com/khanrc/pt.darts>) and [ProxylessNAS](<https://github.com/mit-han-lab/ProxylessNAS>), pretrained models can be downloaded [here](https://drive.google.com/open?id=1LwOXXRJNgfEna0K2j58P9LuZdrWXQeEQ)

**Search codes** will be released by [Sherwood](https://github.com/zhengxiawu) later !

## Requirements

- PyTorch 1.0
- DALI

## Evaluate

You need to modified your path to dataset in ``` data_providers/cifar10.py``` and ```data_providers/imagenet.py```，```config.sh``` is used to prepare your environment, you should **write this file by yourself** and here we use it to prepare dataset and packages

To evaluate the model in **DARTS setting**, just run

```bash
chmod +x run_darts_imagenet.sh
./run_darts_imagenet.sh
```

To evaluate the model in **Mobile setting**, just run

```bash
chmod +x run_gpu_imagenet.sh
./run_gpu_imagenet.sh
```

# Performance

![](figs/2.PNG)

![](figs/3.PNG)