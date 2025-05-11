import { Button } from "@/components/ui/button";
import { Form } from "@/components/ui/form";

export default async function TestTechnique() {
  return (
    <div className={"flex h-screen w-full items-center justify-center"}>
      <div className={"flex h-12 items-center gap-4"}>
      <Button>Click me</Button>

      <Button variant="outline">Outline Button</Button>

      <Button variant="destructive" size="lg">
        Delete
      </Button>
      </div>
    </div>
  );
}
