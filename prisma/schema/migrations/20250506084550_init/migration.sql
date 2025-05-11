-- Form
CREATE TABLE "form" (
    "id" SERIAL NOT NULL,
    "cover" TEXT NOT NULL,
    "title" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "form_pkey" PRIMARY KEY ("id")
);

-- Responses
CREATE TABLE "responses" (
    "id" SERIAL NOT NULL,
    "content" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "responses_pkey" PRIMARY KEY ("id")
);

-- Questions
CREATE TABLE "questions" (
    "id" SERIAL NOT NULL,
    "formId" INT NOT NULL,
    "title" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "type" TEXT NOT NULL,

    CONSTRAINT "questions_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "questions_form_fkey" FOREIGN KEY ("formId") REFERENCES "form"("id") ON DELETE CASCADE
);

-- Join table
CREATE TABLE "questions_responses" (
    "responsesId" INT NOT NULL,
    "questionsId" INT NOT NULL,

    PRIMARY KEY ("responsesId", "questionsId"),
    CONSTRAINT "questions_responses_fkey" FOREIGN KEY ("responsesId") REFERENCES "responses"("id") ON DELETE CASCADE,
    CONSTRAINT "questions_questions_fkey" FOREIGN KEY ("questionsId") REFERENCES "questions"("id") ON DELETE CASCADE
);

