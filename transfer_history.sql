-- Table: "user".transfer_history

-- DROP TABLE "user".transfer_history;

CREATE TABLE "user".transfer_history
(
    trx_id character varying(10) COLLATE pg_catalog."default" NOT NULL DEFAULT nextval('transfer_hist_trx_id_seq'::regclass),
    trx_date timestamp(6) without time zone NOT NULL DEFAULT timezone('GMT+7'::text, (now())::timestamp without time zone),
    fr_acct_no character varying(6) COLLATE pg_catalog."default" NOT NULL,
    to_acct_no character varying(6) COLLATE pg_catalog."default" NOT NULL,
    xfer_amt text COLLATE pg_catalog."default" NOT NULL DEFAULT encrypt('0'::bytea, 'WE_GARDEN'::bytea, 'bf-cbc/pad:pkcs'::text),
    CONSTRAINT transfer_history_pkey PRIMARY KEY (trx_id)
)

TABLESPACE pg_default;

ALTER TABLE "user".transfer_history
    OWNER to postgres;