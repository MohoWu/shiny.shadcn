import { reactShinyInput } from "reactR";
import { Button } from "@/components/ui/button";

function ActionButton({ configuration, value, setValue }) {
  return (
    <Button 
    variant={configuration.variant} 
    onClick={() => setValue(value + 1)}>
      {configuration.label}
    </Button>
  );
}

reactShinyInput(".action_button", "shiny.shadcn.action_button", ActionButton);
