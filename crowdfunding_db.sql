CREATE TABLE "campaign" (
    "cf_id" INT   NOT NULL,
    "contact_id" INT   NOT NULL,
    "company_name" VARCHAR   NOT NULL,
    "description" VARCHAR   NOT NULL,
    "goal" NUMERIC(10,2)   NOT NULL,
    "pledged" NUMERIC(10,2)   NOT NULL,
    "outcome" VARCHAR   NOT NULL,
    "backers_count" INT   NOT NULL,
    "country" VARCHAR   NOT NULL,
    "currency" VARCHAR   NOT NULL,
    "launch_date" DATE   NOT NULL,
    "end_date" DATE   NOT NULL,
    "category_id" VARCHAR   NOT NULL,
    "subcategory_id" VARCHAR   NOT NULL,
    CONSTRAINT "pk_campaign" PRIMARY KEY (
        "cf_id"
     )
);

CREATE TABLE "categories" (
    "category_id" VARCHAR   NOT NULL,
    "category" VARCHAR   NOT NULL,
    CONSTRAINT "pk_categories" PRIMARY KEY (
        "category_id"
     )
);


CREATE TABLE "contacts" (
    "contact_id" INT   NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    "email" VARCHAR   NOT NULL,
    CONSTRAINT "pk_contacts" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "subcategories" (
    "subcategory_id" VARCHAR   NOT NULL,
    "subcategory" VARCHAR   NOT NULL,
    CONSTRAINT "pk_subcategories" PRIMARY KEY (
        "subcategory_id"
     )
);

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contacts" ("contact_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "categories" ("category_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "subcategories" ("subcategory_id");

SELECT * from campaign;

SELECT * from categories;

SELECT * from subcategories;

SELECT * from contacts;
