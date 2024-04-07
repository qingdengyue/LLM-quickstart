## QLORA 使用AdvertiseGen数据集微调

### 1. 关于数据集的参数如下(一共使用大约18K数据)：

```
per_device_train_batch_size=16,                     # 每个设备的训练批量大小
gradient_accumulation_steps=4,                     # 梯度累积步数
learning_rate=1e-3,                                # 学习率
max_steps=300,  

```

### 2. 训练过程：[peft_qlora_chatglm.ipynb](peft_qlora_chatglm.ipynb)

### 3. 训练效果: [peft_chatglm_inference.ipynb](peft_chatglm_inference.ipynb)