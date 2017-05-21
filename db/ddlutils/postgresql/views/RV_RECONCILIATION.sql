--DROP VIEW adempiere.rv_reconciliation;

CREATE OR REPLACE VIEW rv_reconciliation AS
 SELECT f.ad_client_id,
    f.ad_org_id,
    f.isactive,
    f.created,
    f.createdby,
    f.updated,
    f.updatedby,
    f.fact_acct_id,
    f.c_acctschema_id,
    f.account_id,
    f.datetrx,
    f.dateacct,
    f.c_period_id,
    f.ad_table_id,
    f.record_id,
    f.line_id,
    f.gl_category_id,
    f.gl_budget_id,
    f.c_tax_id,
    f.m_locator_id,
    f.postingtype,
    f.c_currency_id,
    f.amtsourcedr,
    f.amtsourcecr,
    f.amtsource,
    f.amtacctdr,
    f.amtacctcr,
    f.amtacct,
    f.rate,
    f.c_uom_id,
    f.qty,
    f.m_product_id,
    f.c_bpartner_id,
    f.ad_orgtrx_id,
    f.c_locfrom_id,
    f.c_locto_id,
    f.c_salesregion_id,
    f.c_project_id,
    f.c_campaign_id,
    f.c_activity_id,
    f.user1_id,
    f.user2_id,
    f.user3_id,
    f.user4_id,
    f.a_asset_id,
    f.description,
    f.orgvalue,
    f.orgname,
    f.accountvalue,
    f.name,
    f.accounttype,
    f.bpartnervalue,
    f.bpname,
    f.c_bp_group_id,
    f.productvalue,
    f.productname,
    f.upc,
    f.m_product_category_id,
    t.ad_pinstance_id,
    t.matchcode
   FROM rv_fact_acct f
     JOIN t_reconciliation t ON f.fact_acct_id = t.fact_acct_id;

ALTER TABLE rv_reconciliation
    OWNER TO adempiere;
