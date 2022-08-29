require "application_system_test_case"

class EmployeesTest < ApplicationSystemTestCase
  setup do
    @employee = employees(:one)
  end

  test "visiting the index" do
    visit employees_url
    assert_selector "h1", text: "Employees"
  end

  test "should create employee" do
    visit employees_url
    click_on "New employee"

    fill_in "Adpdept", with: @employee.adpdept
    fill_in "Badgeno", with: @employee.badgeno
    fill_in "Cell", with: @employee.cell
    fill_in "Dept", with: @employee.dept
    fill_in "Dname", with: @employee.dname
    fill_in "Empid", with: @employee.empid
    fill_in "Ext", with: @employee.ext
    fill_in "First", with: @employee.first
    fill_in "Last", with: @employee.last
    fill_in "Lname", with: @employee.lname
    fill_in "Name", with: @employee.name
    fill_in "Paytype", with: @employee.paytype
    fill_in "Pic", with: @employee.pic
    fill_in "Sname", with: @employee.sname
    fill_in "Startdate", with: @employee.startdate
    fill_in "Telephone", with: @employee.telephone
    fill_in "Wqempid", with: @employee.wqempid
    click_on "Create Employee"

    assert_text "Employee was successfully created"
    click_on "Back"
  end

  test "should update Employee" do
    visit employee_url(@employee)
    click_on "Edit this employee", match: :first

    fill_in "Adpdept", with: @employee.adpdept
    fill_in "Badgeno", with: @employee.badgeno
    fill_in "Cell", with: @employee.cell
    fill_in "Dept", with: @employee.dept
    fill_in "Dname", with: @employee.dname
    fill_in "Empid", with: @employee.empid
    fill_in "Ext", with: @employee.ext
    fill_in "First", with: @employee.first
    fill_in "Last", with: @employee.last
    fill_in "Lname", with: @employee.lname
    fill_in "Name", with: @employee.name
    fill_in "Paytype", with: @employee.paytype
    fill_in "Pic", with: @employee.pic
    fill_in "Sname", with: @employee.sname
    fill_in "Startdate", with: @employee.startdate
    fill_in "Telephone", with: @employee.telephone
    fill_in "Wqempid", with: @employee.wqempid
    click_on "Update Employee"

    assert_text "Employee was successfully updated"
    click_on "Back"
  end

  test "should destroy Employee" do
    visit employee_url(@employee)
    click_on "Destroy this employee", match: :first

    assert_text "Employee was successfully destroyed"
  end
end
