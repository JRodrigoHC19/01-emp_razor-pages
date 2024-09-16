FROM mcr.microsoft.com/dotnet/sdk:7.0

COPY ./mslearn-create-razor-pages-aspnet-core .

WORKDIR /ContosoPizza

RUN dotnet new page --name PizzaList --namespace ContosoPizza.Pages --output Pages

COPY ./launchSettings.json ./Properties/launchSettings.json
COPY ./_Layout.cshtml ./Pages/Shared/_Layout.cshtml
COPY ./Index.cshtml ./Pages/Index.cshtml
COPY ./PizzaList.cshtml ./Pages/PizzaList.cshtml
COPY ./PizzaList.cshtml.cs ./Pages/PizzaList.cshtml.cs
COPY ./Program.cs ./Program.cs

ENTRYPOINT [ "dotnet", "run" ]