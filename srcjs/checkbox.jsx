import { Checkbox } from "@/components/ui/checkbox";

function CheckboxInput({ inputId, configuration, value, setValue }) {
  return (
    <>
      <Checkbox checked={value} onCheckedChange={() => setValue(!value)} />
      <label
        htmlFor={inputId}
        className="text-sm font-medium leading-none peer-disabled:cursor-not-allowed peer-disabled:opacity-70"
      >
        {configuration.label}
      </label>
    </>
  );
}

// export { CheckboxInput };

import { reactShinyInput } from "reactR";
reactShinyInput(".checkbox", "shiny.shadcn.checkbox", CheckboxInput);
