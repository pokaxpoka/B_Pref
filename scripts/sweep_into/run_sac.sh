for seed in 12345 23451 34512 45123 51234; do
    python train_SAC.py env=metaworld_sweep-into-v2 seed=$seed agent.params.actor_lr=0.0003 agent.params.critic_lr=0.0003  num_train_steps=1000000 agent.params.batch_size=512 double_q_critic.params.hidden_dim=256 double_q_critic.params.hidden_depth=3 diag_gaussian_actor.params.hidden_dim=256 diag_gaussian_actor.params.hidden_depth=3
done