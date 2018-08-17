# Traffic Light TF

This is a project using [Tensorflow detection](https://github.com/tensorflow/models) model as starting point and use pre-trained model to classify only state of the traffic light.

More details to come

I follow this step
* setup config
* setup train.py
* setup freeze model
* running on local before move to AWS
* train model in AWS p2.xlarge
* freeze model and test it with sample images in notebook file

Script to train model sim and non-sim
```

python train.py --logtostderr --train_dir=./model/train_large_sim --pipeline_config_path=./config/ssd_inception_v2_coco_large_data_sim.config > train_sim.log 2>&1 &

python train.py --logtostderr --train_dir=./model/train_large_real --pipeline_config_path=./config/ssd_inception_v2_coco_large_data_real.config > train_real.log 2>&1 &

```