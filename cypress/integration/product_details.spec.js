describe('Product Details Page', () => {
  beforeEach(() => {
    cy.visit('http://localhost:3000/');
    cy.get(".products article")
      .first()
      .click();
  });

  it("displays product name", () => {
    cy.get(".product-detail div h1").should("have.text", "Scented Blade");
  });

  it("displays product description", () => {
    cy.get(".product-detail div p").should("contain.text", "The Scented Blade is an extremely rare, tall plant and can be found mostly in savannas. It blooms once a year, for 2 weeks.");
  });

  it("displays product quantity", () => {
    cy.get(".product-detail div .quantity").should("contain.text", "18 in stock")
  });
})