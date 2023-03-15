describe('Add to Cart', () => {
  beforeEach(() => {
    cy.visit('http://localhost:3000/');
  });

  it("increases cart by 1 when the user clicks 'Add to Cart'", () => {
    cy.get(".products article .button_to")
      .contains("Add")
      .click({ force: true })
    cy.get("a[href='/cart']").should("contain.text", "1");
  });

})