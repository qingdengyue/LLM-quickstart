### OMP_NUM_THREADS=1 NCCL_P2P_DISABLE=1 NCCL_IB_DISABLE=1 torchrun --standalone --nnodes=1 --nproc_per_node=4  finetune_hf.py  data/AdvertiseGen/  THUDM/chatglm3-6b  configs/lora.yaml configs/ds_zero_2.json