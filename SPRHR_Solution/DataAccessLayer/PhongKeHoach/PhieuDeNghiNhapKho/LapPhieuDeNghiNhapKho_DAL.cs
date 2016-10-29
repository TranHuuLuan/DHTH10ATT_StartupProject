﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BusinessEntities.PhongKeHoach;

namespace DataAccessLayer.PhongKeHoach.PhieuDeNghiNhapKho
{
    public class LapPhieuDeNghiNhapKho_DAL
    {
        //Check PDNNK
        //GetALLPDNNK
        //GetPDNNK By Ma
        //GetALLCTPDNNK By Ma
        SPRHR_SolutionDataContext db = new SPRHR_SolutionDataContext();
        public bool CheckCoKhongPDNNK(string SoPhieu)
        {
            var c = from i in db.PhieuDNNKs
                    where i.MaPhieuDNNK == SoPhieu
                    select i;
            if (c.Any())
            {
                return true;
            }
            else return false;
        }

        public List<ePhieuDeNghiNhapKho> GetALLPDNNK()
        {
            List<ePhieuDeNghiNhapKho> ls = new List<ePhieuDeNghiNhapKho>();
            var c = from i in db.PhieuDNNKs
                    select i;
            foreach(PhieuDNNK Phieu in c.ToList())
            {
                ePhieuDeNghiNhapKho PDNNK = new ePhieuDeNghiNhapKho();
                PDNNK.SoPhieuDeNghiNhapKho = Phieu.MaPhieuDNNK;
                PDNNK.MaHoaDonNhaCungCap = Phieu.MaHoaDonNCC;
                PDNNK.MaKho = Phieu.MaKho;
                PDNNK.MaNhanVien = Phieu.MaNhanVien;
                PDNNK.NgayLap = Phieu.NgayLap;
                PDNNK.MoTa = Phieu.MoTa;
                PDNNK.TinhTrang = Phieu.tinhtrang;
                ls.Add(PDNNK);
            }
            return ls;
        }
        //Get ALL PDNNK by NhanVien,By Kho ...... pending
        public List<ePhieuDeNghiNhapKho> GetPDNNKByMa(string SoPhieu)
        {
            List<ePhieuDeNghiNhapKho> ls = new List<ePhieuDeNghiNhapKho>();
            var c = from i in db.PhieuDNNKs
                    where i.MaPhieuDNNK == SoPhieu
                    select i;
            foreach (PhieuDNNK Phieu in c.ToList())
            {
                ePhieuDeNghiNhapKho PDNNK = new ePhieuDeNghiNhapKho();
                PDNNK.SoPhieuDeNghiNhapKho = Phieu.MaPhieuDNNK;
                PDNNK.MaHoaDonNhaCungCap = Phieu.MaHoaDonNCC;
                PDNNK.MaKho = Phieu.MaKho;
                PDNNK.MaNhanVien = Phieu.MaNhanVien;
                PDNNK.NgayLap = Phieu.NgayLap;
                PDNNK.MoTa = Phieu.MoTa;
                PDNNK.TinhTrang = Phieu.tinhtrang;
                ls.Add(PDNNK);
            }
            return ls;
        }
        
        public List<eChiTietPhieuDeNghiNhapKho> GetALLCTPDNNKByMa(string SoPhieu)
        {
            var c = from i in db.ChiTietPhieuDNNKs
                    where i.MaPhieuDNNK == SoPhieu
                    select i;
            List<eChiTietPhieuDeNghiNhapKho> ls = new List<eChiTietPhieuDeNghiNhapKho>();
            foreach(ChiTietPhieuDNNK CT in c.ToList())
            {
                eChiTietPhieuDeNghiNhapKho ct = new eChiTietPhieuDeNghiNhapKho();
                ct.SoPDNNK = CT.MaPhieuDNNK;
                ct.MaSP = CT.MaSP;
                ct.SoLuong = Convert.ToInt32(CT.SoLuong);
                ct.GhiChu = ct.GhiChu;
                ls.Add(ct);
            }
            return ls;
        }
        // LaySoLuongPDNNK 
        // LaySoLuongCTPDNNK By SoPhieu
        // Tao PDNNK
        // Tao chi tiet PDNNK
        // Delete PDNNK
        // Delete chi tiet PDNNK
        // Cap Nhat So Luong San Pham Sau Khi Nhap Kho --- 
        // ....
        //.........>>
        public int CountSoLuongPDNNK(int n)
        {
            List<ePhieuDeNghiNhapKho> ls = GetALLPDNNK();
            n = ls.Count();
            return n;
        }

        public int CountSoLuongChiTietPDNNKBySoPhieu(string SoPhieu,int n)
        {
            List<eChiTietPhieuDeNghiNhapKho> ls = GetALLCTPDNNKByMa(SoPhieu);
            n = ls.Count();
            return n;
        }

        public int InsertPDNNK(ePhieuDeNghiNhapKho Phieu)
        {
            Phieu.NgayLap = DateTime.Now;
        }

        public int InsertPDNNKChiTiet(eChiTietPhieuDeNghiNhapKho Chitiet)
        {
            var sp = from i in db.SanPhams
                     where i.MaSP == Chitiet.MaSP
                     select i;
            if(sp.Any())
            {
                var c = from i in db.ChiTietPhieuDNNKs
                        where i.MaSP == Chitiet.MaSP && i.MaPhieuDNNK == Chitiet.SoPDNNK
                        select i;
                if(c.Any())
                {
                    return 0;
                }
                else
                {
                    ChiTietPhieuDNNK newct = new ChiTietPhieuDNNK();
                    newct.MaPhieuDNNK = Chitiet.SoPDNNK;
                    newct.MaSP = Chitiet.MaSP;
                    newct.GhiChu = Chitiet.GhiChu;
                    newct.SoLuong = Chitiet.SoLuong;
                    db.ChiTietPhieuDNNKs.InsertOnSubmit(newct);
                    db.SubmitChanges();
                    return 1;
                }
            }
            else
            {
                return 2;
            }
        }

        public bool DeLetePDNNK(string SoPhieu)
        {
            var c = from i in db.PhieuNhapKhos
                    where i.sopdnn == SoPhieu
                    select i;
            if (c.Any())
            {
                return false;
            }
            else
            {
                PhieuDNNK Phieu = db.PhieuDNNKs.Where(x => x.MaPhieuDNNK == SoPhieu).FirstOrDefault();
                db.PhieuDNNKs.DeleteOnSubmit(Phieu);
                db.SubmitChanges();
                return false;
            }
        }

        public void DeletePDNNKChiTiet(string SoPhieu,string MaSP)
        {
            ChiTietPhieuDNNK ct = db.ChiTietPhieuDNNKs.Where(x => x.MaPhieuDNNK == SoPhieu && x.MaSP == MaSP).FirstOrDefault();
            db.ChiTietPhieuDNNKs.DeleteOnSubmit(ct);
            db.SubmitChanges();
        }
        public void UpdateSoLuongSP(string MaSP,int n)
        {
            SanPham sp = db.SanPhams.Where(x => x.MaSP == MaSP).FirstOrDefault();
            //......
        }
    }
}