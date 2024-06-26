# DeepSpeed ZeRO-2 模式单 GPU 训练翻译模型（T5-Small）
deepspeed --num_gpus=1 translation/run_translation.py \
--deepspeed config/ds_config_zero2.json \
--model_name_or_path t5-small --per_device_train_batch_size 1 \
--output_dir /root/autodl-tmp/t5-small --overwrite_output_dir --fp16 \
--do_train --max_train_samples 500 --num_train_epochs 1 \
--dataset_name wmt16 --dataset_config "ro-en" \
--source_lang en --target_lang ro


deepspeed --num_gpus=1 translation/run_translation.py \
--deepspeed config/ds_config_zero2.json \
--model_name_or_path t5-large \
--per_device_train_batch_size 4 \
--per_device_eval_batch_size 4 \
--output_dir /root/autodl-tmp/t5-large --overwrite_output_dir \
--do_train \
--do_eval \
--max_train_samples 500 --num_train_epochs 1 \
--dataset_name wmt16 --dataset_config "ro-en" \
--source_lang en --target_lang ro


# DeepSpeed ZeRO-3 模式单 GPU 训练翻译模型（T5-Large）
deepspeed --num_gpus=1 translation/run_translation.py \
--deepspeed config/ds_config_zero3.json \
--model_name_or_path t5-3b --per_device_train_batch_size 1 \
--output_dir /root/autodl-tmp/3/t5-3b --overwrite_output_dir --fp16 \
--do_train --max_train_samples 500 --num_train_epochs 1 \
--dataset_name wmt16 --dataset_config "ro-en" \
--source_lang en --target_lang ro



deepspeed --num_gpus=1 translation/run_translation.py \
--deepspeed config/ds_config_zero3.json \ 
--model_name_or_path t5-3b --per_device_train_batch_size 12 \
--output_dir /root/autodl-tmp/3/t5-3b --overwrite_output_dir --bf16 \ 
--do_train --max_train_samples 500  --num_train_epochs 3 \
--dataset_name wmt16 --dataset_config "ro-en" \
--source_lang en --target_lang ro


deepspeed --num_gpus=1 translation/run_translation.py \
--deepspeed config/ds_config_zero3.json \ 
--model_name_or_path t5-11b --per_device_train_batch_size 12 \
--output_dir /root/autodl-tmp/3/t5-11b --overwrite_output_dir --bf16 \ 
--do_train --max_train_samples 500  --num_train_epochs 3 \
--dataset_name wmt16 --dataset_config "ro-en" \
--source_lang en --target_lang ro