within RotationalSpringDamper;
model SpringDamperModel
    .Modelica.Mechanics.Rotational.Components.Inertia inertia_1(J = 0.1,phi(fixed = true,start = 0.26179938779914916639)) annotation(Placement(transformation(extent = {{-50.0,8.0},{-30.0,28.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Mechanics.Rotational.Components.Inertia inertia_2(J = 0.1,phi(fixed = true)) annotation(Placement(transformation(extent = {{2.0,8.0},{22.0,28.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Mechanics.Rotational.Components.SpringDamper springDamper(c = 100,d = 1) annotation(Placement(transformation(extent = {{-24.0,8.0},{-4.0,28.0}},origin = {0.0,0.0},rotation = 0.0)));
equation
    connect(springDamper.flange_b,inertia_2.flange_a) annotation(Line(points = {{-4,18},{2,18}},color = {0,0,0}));
    connect(inertia_1.flange_b,springDamper.flange_a) annotation(Line(points = {{-30,18},{-24,18}},color = {0,0,0}));
    annotation(Icon(coordinateSystem(preserveAspectRatio = false,extent = {{-100.0,-100.0},{100.0,100.0}}),graphics = {Rectangle(lineColor={0,0,0},fillColor={230,230,230},fillPattern=FillPattern.Solid,extent={{-100.0,-100.0},{100.0,100.0}}),Text(lineColor={0,0,255},extent={{-150,150},{150,110}},textString="%name")}));
end SpringDamperModel;
