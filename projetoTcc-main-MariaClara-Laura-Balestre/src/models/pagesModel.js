const database = require("../database/database");

class PagesModel {
  static async selectAllPages() {
    const selectAll = "SELECT * FROM pages;";
    const [result] = await database.query(selectAll);

    return result;
  }

  static async selectPageById(page_id) {
    const selectAllPages = "SELECT * FROM pages WHERE page_id = ?;";
    const [[result]] = await database.query(selectAllPages, [page_id]);

    return result;
  }

  static async insertPages(page) {
    const { page_title, page_status, page_content, position_position_id } =
      page;
    const insertPages = `INSERT INTO pages (page_title, page_status, page_content, position_position_id) VALUES (?, ?, ?, ?);`;
    const [result] = await database.query(insertPages, [
      page_title,
      page_status,
      page_content,
      position_position_id,
    ]);

    return result;
  }
  static async updatePage(page_id, page) {
    const { page_title, page_status, page_content, position_position_id } =
      page;
    const insertPages = `UPDATE pages SET page_title = ?, page_status = ?, page_content = ?, position_position_id = ? WHERE page_id = ?;`;
    const [result] = await database.query(insertPages, [
      page_title,
      page_status,
      page_content,
      position_position_id,
      page_id,
    ]);

    return result;
  }

  static async deletePageById(page_id) {
    const deletePageById = `DELETE FROM pages WHERE page_id = ?;`;
    const [result] = await database.query(deletePageById, [page_id]);

    return result;
  }

  static async selectJoinPagesPosition() {
    const selectJoin = `SELECT  p.page_id, p.page_title, p.page_status, p.page_content, p.page_date, pos.position_name, pos.position_date
                            FROM pages p 
                            JOIN position pos
                            ON p.position_position_id = pos.position_id;`;
    const [result] = await database.query(selectJoin);

    return result;
  }
  static async selectJoinPagesPositionById(id) {
    const selectJoin = `SELECT pages.page_id,
                                   pages.page_title,
                                   pages.page_status,
                                   pages.page_content,
                                   position.position_id,
                                   position.position_name
                            FROM
                                   pages
                            JOIN
                                  position
                                  ON pages.position_position_id = position.position_id
                            WHERE
                                pages.page_id = ?;
                                 `;
    const [[result]] = await database.query(selectJoin, [id]);

    return result;
  }
}

module.exports = PagesModel;
