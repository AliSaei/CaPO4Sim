#  Parameters that  #
#     will not      #
#     change        #
#  ###############  #

# Commented parameters are that which are possible to change via sliderinput buttons

parameters_fixed <- c(
  
  # Other parameters
  Vp = 1e-002, # Plasma volume for a 250-300g rat (in L)
  Vc = 1e-007, # Volume in parathyroid cell (in L)
  
  # PTH #
  k_deg_PTHg = 3.5e-002, # PTH degradation rate constant in parathyroid cells (in min^-1)
  k_deg_PTHp = 1.3e000, # PTH degradation rate constant in plasma (in min^-1)
  K_Ca = 1.16e000, # Binding of Ca2+ to CaSR (in mM)
  beta_exo_PTHg = 5.9e-002, # Rate constant for maximal PTHg secretion (in min^-1)
  gamma_exo_PTHg = 5.8e-002, # Rate constant for maximal inhibition of PTHg secretion by Ca2+ (in min^-1)
  #k_prod_PTHg =  100*4.192e-002, # PTHg synthesis rate (in microM.min^-1)
  gamma_prod_D3 = 8.33e005, # Sensitivity of PTHg synthesis to vitamin D3 (nM)
  n1_exo = 1e002, # 
  n2_exo = 3e001, # 
  rho_exo = 1e001, #
  R = 1.1e000, #
  K_prod_PTH_P = 2.4e000, # Sensitivity of PTHg production to PO4  (in mM)
  n_prod_Pho = 3, # 
  
  # vitamin D3 
  k_conv_min = 8.8e-006, # Rate for minimum production of D3 (in min^-1)
  delta_conv_max = 14.04e-005, # Maximal increase in D3 production rate (in min^-1)
  gamma_ca_conv = 3e-001, # Sensitivity of vitamin D3 production to Ca2+ (in mM). In the paper take 1/gamma_ca_conv to find K_conv_Ca
  gamma_D3_conv = 3e006, #  Sensitivity of vitamin D3 production to D3 (in pM). In the paper take 1/gamma_D3_conv to find K_conv_D3  
  gamma_P_conv = 2e-001, # Sensitivity of vitamin D3 production to PO_4 (in mM). In the paper take 1/gamma_P_conv to find K_conv_PO4
  gamma_FGF_conv = 2e007, # Sensitivity of vitamin D3 production to FGF23 (in pM). In the paper take 1/gamma_FGF_conv to find K_conv_FGF
  K_conv = 1.575e-008, # Sensitivity of vitamin D3 production to PTH (in pM).
  #D3_inact = 2.5e-005 # Plasma concentration of 25(OH)D3, inactive form of D3 (in nM) 
  n_conv = 6e000, #
  k_deg_D3 = 1e-003, # Rate constant of vitamin D3 degradation (in min^1)
  gamma_deg_PTH = 1e009, # Inhibition of Cyp24a1 activity by PTH (in pM^1)
  gamma_deg_FGF = 1.265e008, # Activation of Cyp24a1 activity by FGF23 (in pM-1)
  
  # FGF-23
  k_prod_FGF = 6.902e-011, # Minimal rate of FGF23 synthesis (in fM.min^1)
  delta_max_prod_D3 = 10, # Maximal activation of FGF23 synthesis 
  K_prod_D3 = 5.64e-007, # Sensitivity of FGF23 synthesis to vitamin D3 (in pM) 
  n_prod_FGF = 5,
  K_prod_P = 1.6e000, # Sensitivity of FGF23 synthesis to PO4 (in mM)
  k_deg_FGF = 1.4e-002, # FGF23 degradation rate constant (in min^1)
  
  # absorption
  K_abs_D3 = 6.4e-007, # Sensitivity of Ca absorption to vitamin D3 (in pM) 
  I_Ca = 2.2e-003, # Calcium intake (in micromol.min^-1)
  n_abs = 2e000, # 
  I_P = 1.55e-003, # Phosphate intake (in micromol.min^-1)
  
  # accretion 
  Lambda_ac_Ca = 5.5e-004, # Ca accretion rate constant (in min^-1)
  Lambda_ac_P = 2.75e-004, # PO4 accretion rate constante (in min^-1)
  
  # resorption
  Lambda_res_min = 1e-004, # Minimal Ca resorption rate (in micromol.min^-1)       
  delta_res_max = 6e-004, # Maximal Ca resorption rate (in micromol.min^-1)            
  K_res_D3 = 6e-007, # Sensivity of Ca resorption to vitamin D3 (in pM)
  K_res_PTH = 6.12e-009, # Sensivity of Ca resorption to PTH (in pM)
  n_res = 2e000, #
  
  # rapid bone pool 
  k_p_Ca = 4.4e-001, # Rate constant of Ca2+ transfer from plasma to fast bone pool (in min^-1)
  k_f_Ca = 2.34e-003, # Rate constant of Ca2+ transfer from fast bone pool to plasma (in min^-1)
  k_p_P = 13.5e-000, # Rate constant of PO_4 transfer from plasma to fast bone pool (in min^-1)
  k_f_P = 2.5165e-001, # Rate constant of PO_4 transfer from fast bone pool to plasma (in min^-1)
  
  # intracellular phosphate
  k_pc = 1.875e-001, # Intrecallular PO4 rate constant of PO4 transfer from plasma to intracellular pool (in min^-1)
  k_cp = 1e-003, # Rate constant of PO4 transfer from intracellular pool to plasma (in min^-1)
  
  # N_PO4_c, the total quantity of PO_4 in cells is sored in s_eq and equals
  # 3 mmol
  
  # reaction with calcium and phosphate
  k_f_CaHPO4 = 1.1373e003, # CaHPO4 formation rate constant (in mM^-1.min^-1) 
  k_d_CaHPO4 = 1.6667e003, # CaHPO4 dissociation rate constant (in min^-1) 
  k_f_CaH2PO4 = 5.294e001, # CaH2PO4 formation rate constant (in mM^-1.min^-1) 
  k_d_CaH2PO4 = 1.6667e003, # CaH2PO4 dissociation rate constant (in min^-1) 
  
  f1 = 7.6e-001, # ionic activity coefficient of a monovalent ion
  f2 = 3.3e-001, # ionic activity coefficient of a divalent ion
  f3 = 8e-002, # ionic activity coefficient of a trivalent ion
  
  k_fet = 3e-001, # Fetuin-A binding to CaHPO4 and CaH2PO4+ (in min^-1)
  k_c_CPP = 3e000, # CPP degradation rate constant (in min^-1)
  
  # reaction Ca and Proteins
  k_f_CaProt = 1.901976e002, # CaProt formation rate constant (in mM^-1.min^-1)
  k_d_CaProt = 1.6667e003, # CaProt dissociation constant (in min^-1)
  N_Prot = 20, #
  Prot_tot_p = 0.6, # Total concentration of plasma proteins (in mM). [Albumin]p is about half so 0.4 mM
  
  # reaction Na and phosphate
  k_f_NaHPO4 = 7.8432e000, # NaHPO4- formation rate constant (in mM^-1.min^-1)
  k_f_NaH2PO4 = 4.9020e000, # NaH2PO4 formation rate constant (in mM^-1.min^-1)
  Na = 142, # Sodium plasma concentration (in mM)
  k_d_NaHPO4 = 1.6667e003, # NaHPO4- dissociation rate constant (in min^-1)
  k_d_NaH2PO4 = 1.6667e003, # NaH2PO4 dissociation rate constant (in min^-1)
  c = 0.62,
  d = 0.38,
  
  # renal parameters
  GFR = 2e-003, # Glomerular filtration rate (in mL.min^-1)
  
  #---- Ca ----#
  lambda_reabs_PT_0 = 0.64, # Minimal fractional reabsorption of Ca2+ in proximal tubule (PT)
  delta_PT_max = 0.01, # Stimulation of Ca2+ reabsorption in PT by PTH
  PTH_ref = 1.5e-008, # Sensitivity  of Ca2+ reabsorption in PT to PTH (in pM)
  n_PT = 5,
  
  lambda_TAL_0 = 2.25e-001, # Minimal fractional reabsorption of Ca2+ in the TAL
  delta_CaSR_max = 1.75e-002, # Stimulation of Ca2+ reabsorption in TAL by CaSR
  Ca_ref = 1.33e000, # Sensitivity  of Ca2+ reabsorption in TAL to CaSR (in mM)
  n_TAL = 4e000,
  K_TAL_PTH = 4.2e-009, # Sensitivity  of Ca2+ reabsorption in TAL to PTH (in pM)
  delta_PTH_max = 7.5e-003, # Stimulation of Ca2+ reabsorption in TAL by PTH
  
  lambda_DCT_0 = 9e-002, # Minimal fractional reabsorption of Ca2+ in the DCT-CNT
  delta_DCT_max = 1e-002, # Stimulation of Ca2+ reabsorption in DCT-CNT by PTH and D3
  K_DCT_PTH = 6.3e-009, # Sensitivity  of Ca2+ reabsorption in DCT-CNT to PTH (in pM)
  K_DCT_D3 = 4.8e-007, # Sensitivity  of Ca2+ reabsorption in DCT-CNT to D3 (in pM)
  
  #---- PO4 ----#
  n_reabs_P = 5,
  lambda_PT_0 = 5.5e-001, # Minimal fractional reabsorption of PO_4 in proximal tubule (PT)
  delta_PTH_max_P = 1e-001, # Stimulation of PO_4 reabsorption in PT by PTH
  K_PT_PTH = 2e-008, # Sensitivity  of PO_4 reabsorption in PT to PTH (in pM)
  delta_P_max = 0.5e-001, #  Stimulation of PO_4 reabsorption in PT by PO_4
  K_PT_P = 1.6e000, # Sensitivity  of PO_4 reabsorption in PT to PO_4 (in mM)
  delta_FGF_max = 2e-001, # Stimulation of PO_4 reabsorption in PT by FGF23
  K_PT_FGF = 2e-008, # Sensitivity  of PO_4 reabsorption in PT to FGF23 (in pM)
  lambda_DCT_P = 1e-001, # Fractional reabsorption of PO4 in the DCT
  
  # Take the effect of pH into account (proportion of HPO42- VS H2PO4-)
  pH = 7.4e000, # 
  pKa = 6.8e000, # pKA of the pair H2PO4-/HPO42-
  
  # Normalization
  D3_norm = 1e-009,
  PTH_g_norm = 1e-009,
  PTH_p_norm = 1e-009,
  FGF_p_norm = 1e-009,
  Ca_p_norm = 1e000,
  Ca_f_norm = 1e000,
  Ca_b_norm = 1e000,
  Pho_p_norm = 1e000,
  Pho_c_norm = 1e000,
  Pho_f_norm = 1e000,
  Pho_b_norm = 1e000,
  HPO4_norm = 1e000,
  H2PO4_norm = 1e000,
  CaHPO4_norm = 1e000,
  CaH2PO4_norm = 1e000,
  CPP_norm = 1e000,
  
  # EGTA constants if any
  EGTA_norm = 1e000,
  Ca_EGTA_norm = 1e000,
  k_on_egta = 0,
  k_off_egta = 0,
  k_inject_egta = 0,
  
  # Supersaturation 
  K_sp_DCPD = 1.87e-007 # Supersaturation index of Brushite (in M^2)
)

# calculated parameters based on fixed parameters
parameters_calc <- with(
  list(parameters_fixed), 
  c(r = 10^(parameters_fixed["pH"] - parameters_fixed["pKa"]),
    a = 10^(parameters_fixed["pH"] - parameters_fixed["pKa"]) /
         (1 + 10^(parameters_fixed["pH"] - parameters_fixed["pKa"])),
    b = 10^(parameters_fixed["pH"] - parameters_fixed["pKa"]) /
        (1 + 10^(parameters_fixed["pH"] - parameters_fixed["pKa"])) /
        10^(parameters_fixed["pH"] - parameters_fixed["pKa"])
  )
)

names(parameters_calc) <- c("r", "a", "b")

# merge calculated and fixed parameters
parameters_fixed <- c(parameters_fixed, parameters_calc)