-- CreateTable
CREATE TABLE "ProfilesBookmarks" (
    "userId" INTEGER NOT NULL,
    "profileId" INTEGER NOT NULL,

    CONSTRAINT "ProfilesBookmarks_pkey" PRIMARY KEY ("userId","profileId")
);

-- AddForeignKey
ALTER TABLE "ProfilesBookmarks" ADD CONSTRAINT "ProfilesBookmarks_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ProfilesBookmarks" ADD CONSTRAINT "ProfilesBookmarks_profileId_fkey" FOREIGN KEY ("profileId") REFERENCES "Profile"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
