/*
  Warnings:

  - Changed the type of `questions` on the `Assessment` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `salaryRanges` on the `IndustryInsight` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.

*/
-- AlterTable
ALTER TABLE "public"."Assessment" DROP COLUMN "questions",
ADD COLUMN     "questions" JSONB NOT NULL;

-- AlterTable
ALTER TABLE "public"."IndustryInsight" DROP COLUMN "salaryRanges",
ADD COLUMN     "salaryRanges" JSONB NOT NULL;

-- CreateIndex
CREATE INDEX "User_industry_idx" ON "public"."User"("industry");
