let titles_type = ["Dataset", "Survey", "Review", "Overview"];
let titles_method = ["Locomotion", "MPC", "LQR", "Loco-manipulation", "Whole-Body Control", "Whole-Body", "WBC", "Optimization", "Learning", "Sim-to-Real", "Imitaion", "Terrain", "Perception", "Reinforment Learning", "Deep RL", "DRL", "Gradient"
                     "Navigation", "Planning", "Planner", "SLAM", "Estimation", "Semantic", "Open-Vocabulary","Localization", "End-to-end",  
                     "Manipulation", "Diffusion Policy", "Generative", "Vision-Language-Action", "VLM", "VLA", "Word Model"];
let titles_platform = ["Robots", "Biped", "Quadrupedal", "Legged", "Wheel", "Humanoid", "Car", "Mobile", "Drone", "Autonomous"， "Driving", "Arm", "Franka"];
let titles_sensor = ["LiDAR", "Visual", "Vision", "Camera", "Inertial","Radar","Multi-modal","Event Camera"];

let titles = titles_method + titles_type + titles_sensor + titles_platform;
let authors_array = [        
//RL
  "Sergey Leyvine", "Piter Abbel", 

// Legged
  "Scott Kuindersma", "Russ Tedrake", "Aaron Ames", "Sangbae Kim", "Jie Tan",
  "Joonho Lee", "Chris Atkeson", "Yoshihiko Nakamura", "Shuuji Kajita", "Oussama Khatib",
  "Jianyu Chen", "Marco Hutter", "Jemin Hwangbo", "Alexander W. Winkler", "Matteo Focchi",
  "Benjamin Katz", "Steve Collins", "Seungmoon Song", "Michael Posa", 
  "Zhibin Li", "Takuma Yoneda", "Ding Zhao",

//Manipulation
  "Hao Su", "Chuang Gan", "Shuran Song", "Fei-fei Li", "Huazhe Xu", "Yang Gao", "Yi Wu",

//Navigation
  "Hongyang Li", 


];

let conferences = [
    // CV
    "3DV", "ACCV", "ACM MM", "BMVC", "CVPR", "ECCV", "ICCV", "ICDAR", "ICIP", "ICME", "ICPR", "IEEE VIS", "MICCAI", "SIGGRAPH", "WACV",
    // ML
    "ACML", "AISTATS", "ECML", "ICLR", "ICML", "ML4H", "NeurIPS", "NIPS", "UAI",
    // Robotics
    "ICRA", "IROS", "RSS", "CoRL", "Humanoids", "Science Robotics", "IJRR", "TRO", "RAL" 
];

let start = conferences.shift();        
let conferences_rg = conferences.reduce(|sum, v| sum + "|" + v, start);
let conferences_rg = "(" + conferences_rg + ")([\\s'-]*\\d+)?";

let start = titles.shift();
let title_rg = titles.reduce(|sum, v| sum + "|" + v, start);

let start = authors_array.shift();
let authors_rg = authors_array.reduce(|sum, v| sum + "|" + v, start);

export title_rg;
export authors_rg;
export conferences_rg;
