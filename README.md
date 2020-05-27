## Analysis Pipeline Notes on GCP ##

At UW, we spent about a year porting our Analysis Pipeline (https://github.com/UW-GAC/analysis_pipeline) to run on GCP.  This repository contains notes on this port.

The notes include:
- `GCP_Intro_Local_Analysis_11May2020.pdf`- an introductory presentation of the port to GCP
- `Topmed_Analysis_Pipeline_on_the_Cloud.pdf` - a presention containing:
  - Background on the analysis pipeline
  - Preliminaries to the GCP port
  - Support of Slurm on GCP
  - Issues encountered
- `AnalysisPipeline_Slurm_Workflow.pdf` - Architectural overview of Analysis Pipeline on Slurm
- `slurm-deployment-guide.txt` - Slurm deployment guide (duh!)
- `custom-compute-install` - Slurm deployment for compute nodes
- `custom-controller-install` - Slurm deployment for controller
- `tm1.tfvars` - Slurm deployment terraform file
- `GCP_Slurm_Issues_and_Resolutions.pdf'` - Various issues encountered and their resolutions
- `TAM_Notes_Dave.pdf`-Chronological list of questions/notes/resources with Google

