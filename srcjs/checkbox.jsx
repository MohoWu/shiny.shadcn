import { Checkbox } from "@/components/ui/checkbox";

function CheckboxInput({ configuration, value, setValue }) {
  return (
    <div className="flex space-x-2 items-top">
      <Checkbox checked={value} onCheckedChange={() => setValue(!value)} />
      <div className="grid gap-1.5 leading-none">
        <label
          htmlFor={configuration.id}
          className="text-sm font-medium leading-none peer-disabled:cursor-not-allowed peer-disabled:opacity-70"
        >
          {configuration.label}
        </label>
        <p className="text-sm text-muted-foreground">
          {configuration.description}
        </p>
      </div>
    </div>
  );
}

// export { CheckboxInput };

import { reactShinyInput } from "reactR";
reactShinyInput(".checkbox", "shiny.shadcn.checkbox", CheckboxInput);
