locals {

  common_tags = {

    Environment   = var.tag_Environment
    Platform      = var.tag_Platform
    ApplicationID = var.tag_ApplicationID
    PowerMgt      = var.tag_PowerMgt
    Owner         = var.tag_Owner
    CostCentre    = var.tag_CostCentre
    Snapshot      = var.tag_Snapshot
    patchcyle     = var.tag_patchcyle
    patchGroup    = var.tag_PatchGroup
    OUName        = var.tag_OUName
  }
}