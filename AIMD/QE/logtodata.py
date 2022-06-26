import numpy as np
import dpdata
d_log = dpdata.LabeledSystem('graphene', fmt = 'qe/cp/traj')
print(d_log)
idx = d_log.shuffle()
d_log_shuffled = dpdata.LabeledSystem()
for ii in idx:
  d_log_shuffled.append(d_log.sub_system(ii))
Nsets = 5
# Neach = 200
# for i in range(Nsets):
  # print(d_log_shuffled.sub_system(np.arange(i*Neach, (i+1)*Neach).tolist()).get_nframes())
  # d_log_shuffled.sub_system( np.arange(i*Neach, (i+1)*Neach).tolist() ).to("deepmd/npy", "deepmd_data/"+str(i), set_size=Neach)
d_log_shuffled.sub_system( np.arange(0, 40).tolist() ).to("deepmd/npy", "deepmd_data/"+str(0), set_size=40)
d_log_shuffled.sub_system( np.arange(40, 80).tolist() ).to("deepmd/npy", "deepmd_data/"+str(1), set_size=40)
d_log_shuffled.sub_system( np.arange(80, 120).tolist() ).to("deepmd/npy", "deepmd_data/"+str(2), set_size=40)
d_log_shuffled.sub_system( np.arange(120, 160).tolist() ).to("deepmd/npy", "deepmd_data/"+str(3), set_size=40)
d_log_shuffled.sub_system( np.arange(160, 200).tolist() ).to("deepmd/npy", "deepmd_data/"+str(4), set_size=40)
print("finish...just a try")
  # xavierzhe = np.arange(i*Neach, (i+1)*Neach).tolist()
  # print(xavierzhe)
  # print(type(xavierzhe))