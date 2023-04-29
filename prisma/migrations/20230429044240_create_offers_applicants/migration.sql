-- CreateTable
CREATE TABLE "OffersApplicants" (
    "offerId" INTEGER NOT NULL,
    "profileId" INTEGER NOT NULL,

    CONSTRAINT "OffersApplicants_pkey" PRIMARY KEY ("offerId","profileId")
);

-- AddForeignKey
ALTER TABLE "OffersApplicants" ADD CONSTRAINT "OffersApplicants_offerId_fkey" FOREIGN KEY ("offerId") REFERENCES "Offer"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "OffersApplicants" ADD CONSTRAINT "OffersApplicants_profileId_fkey" FOREIGN KEY ("profileId") REFERENCES "Profile"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
